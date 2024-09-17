
function _86or64()
    if(0xfffffffff==0xffffffff) then return 32 else return 64 end
end

print( 'INT ', _86or64(), 'bit' );
print( 'compiler', #string.pack("T",0)*8, 'bit' )

--[[

D:\lua-5.4.7\x64>lua54-x64.exe luainfo.lua
INT     64      bit
compiler        64      bit

D:\lua-5.4.7\x86>lua54-x86.exe luainfo.lua
INT     64      bit
compiler        32      bit

note : 
lua x86 and x64 both can run same luac file, IF both are using same "64" bit int.

]]--
