<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $imagenid
 * @property int $noticiaid
 * @property string $url
 * @property Noticia $noticia
 */
class imagenes extends Model
{
    /**
     * The primary key for the model.
     * 
     * @var string
     */
    protected $primaryKey = 'imagenid';

    /**
     * @var array
     */
    protected $fillable = ['noticiaid', 'url'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function noticia()
    {
        return $this->belongsTo('App\Noticia', 'noticiaid', 'noticiaid');
    }
}
