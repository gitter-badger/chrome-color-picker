module.exports =
  {
    General:
      title: 'General Settings'
      type: 'object'
      properties:
        preferredFormat:
          title: 'Preferred Color Format'
          description: 'On opening for the first time, the Color Picker uses this format.'
          type: 'string'
          enum: ['rgb', 'hex', 'hsl']
          default: 'hex'
        useLastFormat:
          title: 'Use Last Format'
          description: 'Use the format which was selected before closing the dialog.'
          type: 'boolean'
          default: true
        autoSetColor:
          title: 'Auto Set Color'
          description: 'Automatically set the color values as you edit them'
          type: 'boolean'
          default: false
    HexColors:
      title: 'Hex Color Specific Settings'
      type: 'object'
      properties:
        fallbackAlphaFormat:
          title: 'Fallback Color Format With Alpha Channel'
          description: 'If the current color has an **alpha** value less than **1**, the picker automatically switches to this notation.'
          type: 'string'
          enum: ['rgb', 'hsl']
          default: 'rgb'
        uppercaseHex:
          title: 'Uppercase Hex Values'
          description: 'Sets **hex** values to upper case.'
          type: 'boolean'
          default: false
        autoShortHex:
          title: 'Automatically Short Hex'
          description: 'Automatically shorten **hex** values if possible. e.g color #f00f00 becomes #f00'
          type: 'boolean'
          default: false
        autoColorNames:
          title: 'Auto Color Names'
          description: 'Automatically switch to a color name e.g color name of #f00 is red, so the color will be set as red.'
          type: 'boolean'
          default: false
  }