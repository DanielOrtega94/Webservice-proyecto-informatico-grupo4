<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $noticiaid
 * @property int $deporteid
 * @property string $texto
 * @property Deporte $deporte
 * @property Imagene[] $imagenes
 */
class noticias extends Model
{
    /**
     * The primary key for the model.
     * 
     * @var string
     */
    protected $primaryKey = 'noticiaid';

    /**
     * @var array
     */
    protected $fillable = ['deporteid', 'texto'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function deporte()
    {
        return $this->belongsTo('App\Deporte', 'deporteid', 'deporteid');
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasMany
     */
    public function imagenes()
    {
        return $this->hasMany('App\Imagene', 'noticiaid', 'noticiaid');
    }
}
