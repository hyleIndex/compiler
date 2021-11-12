import sys
import getopt
import tac
import cfg
import ssagen

def DSE(cfg_now):
    livein = {}
    liveout = {}
    cfg.recompute_liveness(cfg_now, livein, liveout)
    saved_opcode = ['div', 'mod', 'call']
    for bl in cfg_now._blockmap.values():
        for i in range(len(bl.body)):
            if bl.body[i].opcode in saved_opcode:
                continue
            if bl.body[i].dest in liveout[bl.body[i]]:
                continue
            bl.body[i].opcode = 'nop'
        bl.body = list(filter(lambda instr: instr.opcode != 'nop', bl.body))

def copy_propagation(cfg_now):
    for bl in cfg_now._blockmap.values():
        for i in range(len(bl.body)):
            if bl.body[i].opcode == 'copy':
                used = bl.body[i].arg1
                tmp = bl.body[i].dest
                for j in range(i + 1, (len(bl.body))):
                    now = bl.body[j]
                    if now.arg1 != None:
                        if now.arg1 == tmp:
                            bl.body[j].arg1 = used
                    if now.arg2 != None:
                        if now.arg2 == tmp:
                            bl.body[j].arg2 = used
                bl.body[i].opcode = 'nop'

if __name__ == "__main__":
    opts, args = getopt.getopt(sys.argv[1:], '-o', [])
    tac_now = tac.load_tac(args[0])
    gvars, procs = dict(), dict()
    for decl in tac_now:
        if isinstance(decl, tac.Gvar):
            gvars[decl.name] = decl
        elif isinstance(decl, tac.Proc):
            cfg_now = cfg.infer(decl)
            ssagen.crude_ssagen(decl, cfg_now)
            copy_propagation(cfg_now)
            DSE(cfg_now)
            cfg.linearize(decl, cfg_now)
            procs[decl.name] = cfg_now
            cfg.linearize(decl, cfg_now)
            print(decl)

