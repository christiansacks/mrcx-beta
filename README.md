# mrcx
mrcx client written by roovis

# installation

Copy or link the binary required to your $MYSTIC_HOME/themes/default/scripts dir, for example if you need the amd64 binary:

To copy;
```
cp scripts/mrcx-0.30-beta-amd64-a48.mpx /mystic/themes/default/scripts/mrcx.mpx
```

or to link (preferred if you're using linux)
```
ln -s ./scripts/mrcx-0.30-beta-amd64-a48.mpx /mystic/themes/default/scripts/mrcx.mpx
```

Next copy or link the contents of the text dir into your $MYSTIC_HOME/themes/default/text dir, for example:

To copy;
```
cp -rv text/* /mystic/themes/default/text/
```

or to link (preferred if you're using linux)
```
ln -s ./text/* /mystic/themes/default/text/
```

Now add a menu item in Mystic CFG like this;

```
╔════════════════════════ Command ID 54: default.main ════════════════════════╗
║                                                                             ║
║ Display Text  │ (I) MRCX                                                    ║
║ LightBar OFF  │                                                             ║
║ LightBar ON   │                                                             ║
║ LightBar X Y  │ 0   0                                                       ║
║ Hot Key       │ I                                 ┌ GRID MENU JUMPS ─────── ║
║ Access String │                                   │ Up     00    Escape  00 ║
║ Display When  │ User has access                   │ Down   00    Tab     00 ║
║ Redraw After  │ Yes                               │ Left   00    PageUp  00 ║
║ Execute Timer │ 0                                 │ Right  00    PageDn  00 ║
║ Timer Type    │ Every <timer> interval            │ Home   00    End     00 ║
║                                                                             ║
║ Action List ────────────── Access ───── Data ─────────────────────────────  ║
║ (GX) Execute MPL program   OK           mrcx                                █
║                                                                             ░
║                                                                             ░
║                                                                             ░
║                                                                             ░
║                                                                             ░
╚═════════════ (TAB) Switch Focus                   (/) Commands ═════════════╝
```
