//
//  Shader.fsh
//  TestGame
//
//  Created by roy on 13-3-23.
//  Copyright (c) 2013年 __MyCompanyName__. All rights reserved.
//

varying lowp vec4 colorVarying;

void main()
{
    gl_FragColor = colorVarying;
}
