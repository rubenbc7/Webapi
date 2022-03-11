<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\ReporteLampara;

class ReportesLamparaController extends Controller
{
    public function store(Request $request){
        $respuesta = array();
        $respuesta['exito'] = false;

        $nuevoReporteLampara = new ReporteLampara();
        if($request->input('nombre_reportante') !=NULL){
            $nuevoReporteLampara->nombre_reportante = $request->input('nombre_reportante');
        } else{
            $respuesta['mensaje'] = "El campo nombre_reportante es obligatorio";
            return response()->json($respuesta, 400);
        }
        
        if($request->input('latitud') !=NULL){
            $nuevoReporteLampara->latitud = $request->input('latitud');
        } else{
            $respuesta['mensaje'] = "El campo latitud es obligatorio";
            return response()->json($respuesta, 400);
        }

        if($request->input('longitud') !=NULL){
            $nuevoReporteLampara->longitud = $request->input('longitud');
        } else{
            $respuesta['mensaje'] = "El campo longitud es obligatorio";
            return response()->json($respuesta, 400);
        }

        if($request->input('foto') !=NULL){
            $nuevoReporteLampara->foto = $request->input('foto');
        } else{
            $respuesta['mensaje'] = "El campo foto es obligatorio";
            return response()->json($respuesta, 400);
        }


        $nuevoReporteLampara->fecha_inicio_desperfecto = $request->input('fecha_inicio_desperfecto');
        $nuevoReporteLampara->nota = $request->input('nota');

        try {
            if($nuevoReporteLampara->save()){
                $respuesta['exito'] = true;
            }
        } catch (\Exception $e) {
            $respuesta['mensaje'] = $e->getMessage();
            return response()->json($respuesta, 500);
        }
        

        return $respuesta;
    }
}
