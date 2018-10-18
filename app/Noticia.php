<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $deporteid
 * @property string $texto
 * @property string $deleted_at
 * @property string $created_at
 * @property string $updated_at
 * @property Deporte $deporte
 * @property Imagene[] $imagenes
 */
class Noticia extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['deporteid', 'texto', 'deleted_at', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function deporte()
    {
        return $this->belongsTo('App\Deporte', 'deporteid');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function imagenes()
    {
        return $this->hasMany('App\Imagene', 'noticiaid');
    }
}
