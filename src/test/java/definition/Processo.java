package definition;

import groovy.json.internal.LazyMap;

/**
 * Created by robson on 30/08/2017.
 */
public class Processo {

    private static final String URL_PROCESSO = "http://agapito-server.herokuapp.com/processos";
    private static LazyMap camposJson = new LazyMap();
    private static String ultimoProcesso;

    public static void addFields(String field, String value) {
        camposJson.put(field, value);
    }

    public static void clearFields() {
        camposJson.clear();
    }

    public static LazyMap getFields() {
        return camposJson;
    }

    public static String getEndPoint() {
        return URL_PROCESSO;
    }

    public static String getultimoProcesso() {
        return ultimoProcesso;
    }

    public static void setultimoProcesso(String ultimoProcesso) {
        Processo.ultimoProcesso = ultimoProcesso;
    }
}
