<?php

    class News implements JsonSerializable
    {
        public $id;
        public $title;
        public $content;
        public function __construct($id,$title,$content)
        {
            $this->id = $id;
            $this->title = $title;
            $this->content = $content;
        }
        public function jsonSerialize() 
        {
            return [
            'News' => [
                'id' => $this->id,
                'title' => $this->title,
                'content' => $this->content
            ]
        ];
        }
        //public function 
        // function getJsonData()
        // {
        //     $var = get_object_vars($this);
        //     foreach($var as &$value){
        //     if(is_object($value) && method_exists($value,'getJsonData')){
        //         $value = $value->getJsonData();
        //     }
        //     }
        //     return $var;
        //}
    }
    
?>

