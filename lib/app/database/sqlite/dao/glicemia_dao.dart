import 'dart:html';

class GlicemiaDAOImpl implements GlicemiaDAO {
  Database _db;

  @override
  Future<List<Glicemia>> find() async {
    _db = await Connection.get();
    List<Map<String, dynamic>> resultado = await _db.query('glicemia');
    List<Glicemia> lista = List.generate( resultado.length, (i)){
      var linha = resultado[i];
      return Glicemia(
        id : linha['id'],
        valorGlicemia : linha['valorGlicemia'],
        refeicao : linha['refeicao']
      );
    }
  return lista;
  }

  @override
  remove(int id) async{
    _db = await Connection.get();
    var sql;
    if(glicemia.id == null){
      sql = 'INSERT INTO glicemia(valorGlicemia, refeicao) VALUES (?,?)';
      _db.rawInsert(sql,[glicemia.valorGlicemia, glicemia.refeicao]);      
    }else{
         sql ='UPDATE glicemia SET valorGlicemia = ?, refeicao = ? WHERE id = ?';
         _db.rawUpdate(sql, [glicemia.valorGlicemia, glicemia.refeicao, glicemia.id]);
      }
  }

}
