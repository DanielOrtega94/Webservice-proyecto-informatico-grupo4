<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $usuarioid
 * @property int $equipoid
 * @property int $idSubscripcion
 * @property string $fecha
 * @property Equipo $equipo
 * @property Usuario $usuario
 */
class subscripciones extends Model
{
    /**
     * The primary key for the model.
     * 
     * @var string
     */
    protected $primaryKey = 'idSubscripcion';

    /**
     * @var array
     */
    protected $fillable = ['usuarioid', 'equipoid', 'fecha'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function equipo()
    {
        return $this->belongsTo('App\Equipo', 'equipoid', 'equipoid');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function usuario()
    {
        return $this->belongsTo('App\Usuario', 'usuarioid', 'usuarioid');
    }
}
