const content=`<style>
    body{
        height: 100%;
        width: 100%;
        background-color: #bae1ff;
    }
    .row{
        width: 100%;
        height: 23%;
        display: flex;
        padding: 1%;

    }
    .row button{
        width: 8%;
        margin:1%;
        height: 98%;
        line-height: 1.1;
        border: none;
        background-color: rgba(255, 255, 255, 0.4);
        border-radius: 5px;
        box-shadow: 1px 1px 1px 1px rgba(0, 0, 0, 0.2);
    }
    .slc{
        width: 99%;
        height: 10%;
        display: flex;
        overflow-x: auto;
    }
</style>
<body>
    <div id="s" class="slc"></div>   
<div class="row">
    <button onclick="i('q')">Q<br></button>
    <button onclick="i('w')">W<br></button>
    <button onclick="i('e')">E<br></button>
    <button onclick="i('r')">R<br></button>
    <button onclick="i('t')">T<br></button>
    <button onclick="i('y')">Y<br></button>
    <button onclick="i('u')">U<br></button>
    <button onclick="i('i')">I<br></button>
    <button onclick="i('o')">O<br></button>
     <button onclick="i('p')">P<br></button><button onclick="b()">←</button>
</div>
<div class="row">
    <button onclick="i('a')">A<br></button>
    <button onclick="i('s')">S<br></button>
    <button onclick="i('d')">D<br></button>
     <button onclick="i('f')">F<br></button>
    <button onclick="i('g')">G<br></button>
    <button onclick="i('h')">H<br></button>
    <button onclick="i('j')">J<br></button>
    <button onclick="i('k')">K<br></button>
    <button onclick="i('l')">L<br></button>
    <button onclick="s()">↑<br></button><button>HD</button>
    </div>
<div class="row">
    <button onclick="i('z')">Z<br></button>
    <button onclick="i('x')">X<br></button>
    <button onclick="i('c')">C<br></button>
     <button onclick="i('v')">V<br></button>
     <button onclick="i('b')">B<br></button>
    <button onclick="i('n')">N<br></button>
    <button onclick="i('m')">M<br></button>
    <button onclick="i(' ')">Sp.</button>
    <button onclick="i(',')">,</button>
    <button onclick="i('.')">.</button><button onclick="i('\n')">Ent.</button>
 </div>
 <div class="row" style="height: 10%;">
    <button onclick="i('1')">1</button>
    <button onclick="i('2')">2</button>
    <button onclick="i('3')">3</button>
    <button onclick="i('4')">4</button>
    <button onclick="i('5')">5</button>
    <button onclick="i('6')">6</button>
    <button onclick="i('7')">7</button>
    <button onclick="i('8')">8</button>
    <button onclick="i('9')">9</button>
    <button onclick="i('0')">0</button><button onclick="i('%')">%</button></div><div class="row" style="height: 10%;">
    <button onclick="i('~')">~</button>
    <button onclick="i('!')">!</button>
    <button onclick="i('@')">@</button>
    <button onclick="i('#')">#</button>
     <button onclick="i('\'')">'</button>
    <button onclick="i('&')">&</button>
    <button onclick="i('*')">*</button>
    <button onclick="i('?')">?</button>
     <button onclick="i('()')">(</button>
   <button onclick="i(')')">)</button><button onclick="i(':')">:</button></div>
</body>`;
