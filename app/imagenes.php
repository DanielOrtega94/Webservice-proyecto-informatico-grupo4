<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * @property int $id
 * @property int $noticiaid
 * @property string $url
 * @property string $deleted_at
 * @property string $created_at
 * @property string $updated_at
 * @property Noticia $noticia
 */
class imagenes extends Model
{
    /**
     * @var array
     */
    protected $fillable = ['noticiaid', 'url', 'deleted_at', 'created_at', 'updated_at'];

    /**
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function noticia()
    {
        return $this->belongsTo('App\Noticia', 'noticiaid');
    }
}
