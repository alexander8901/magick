-- these are extracted from imagemagick headers

class Enum
  to_str: (val) =>
    return val if type(val) == "string"
    @[val]

  to_int: (val) =>
    return val if type(val) == "number"
    @[val]

enum = (t) ->
  keys = [k for k in pairs t]
  for key in *keys
    t[t[key]] = key

  setmetatable t, Enum.__base
  t

-- magick/composite.h
composite_operators = enum {
  [0]: "UndefinedCompositeOp"
  "NoCompositeOp"
  "ModulusAddCompositeOp"
  "AtopCompositeOp"
  "BlendCompositeOp"
  "BumpmapCompositeOp"
  "ChangeMaskCompositeOp"
  "ClearCompositeOp"
  "ColorBurnCompositeOp"
  "ColorDodgeCompositeOp"
  "ColorizeCompositeOp"
  "CopyBlackCompositeOp"
  "CopyBlueCompositeOp"
  "CopyCompositeOp"
  "CopyCyanCompositeOp"
  "CopyGreenCompositeOp"
  "CopyMagentaCompositeOp"
  "CopyOpacityCompositeOp"
  "CopyRedCompositeOp"
  "CopyYellowCompositeOp"
  "DarkenCompositeOp"
  "DstAtopCompositeOp"
  "DstCompositeOp"
  "DstInCompositeOp"
  "DstOutCompositeOp"
  "DstOverCompositeOp"
  "DifferenceCompositeOp"
  "DisplaceCompositeOp"
  "DissolveCompositeOp"
  "ExclusionCompositeOp"
  "HardLightCompositeOp"
  "HueCompositeOp"
  "InCompositeOp"
  "LightenCompositeOp"
  "LinearLightCompositeOp"
  "LuminizeCompositeOp"
  "MinusDstCompositeOp"
  "ModulateCompositeOp"
  "MultiplyCompositeOp"
  "OutCompositeOp"
  "OverCompositeOp"
  "OverlayCompositeOp"
  "PlusCompositeOp"
  "ReplaceCompositeOp"
  "SaturateCompositeOp"
  "ScreenCompositeOp"
  "SoftLightCompositeOp"
  "SrcAtopCompositeOp"
  "SrcCompositeOp"
  "SrcInCompositeOp"
  "SrcOutCompositeOp"
  "SrcOverCompositeOp"
  "ModulusSubtractCompositeOp"
  "ThresholdCompositeOp"
  "XorCompositeOp"
  "DivideDstCompositeOp"
  "DistortCompositeOp"
  "BlurCompositeOp"
  "PegtopLightCompositeOp"
  "VividLightCompositeOp"
  "PinLightCompositeOp"
  "LinearDodgeCompositeOp"
  "LinearBurnCompositeOp"
  "MathematicsCompositeOp"
  "DivideSrcCompositeOp"
  "MinusSrcCompositeOp"
  "DarkenIntensityCompositeOp"
  "LightenIntensityCompositeOp"
  "HardMixCompositeOp"
}

gravity = enum {
  [0]: "ForgetGravity"
  "NorthWestGravity"
  "NorthGravity"
  "NorthEastGravity"
  "WestGravity"
  "CenterGravity"
  "EastGravity"
  "SouthWestGravity"
  "SouthGravity"
  "SouthEastGravity"
  "StaticGravity"
}


orientation = enum {
  [0]: "UndefinedOrientation"
  "TopLeftOrientation"
  "TopRightOrientation"
  "BottomRightOrientation"
  "BottomLeftOrientation"
  "LeftTopOrientation"
  "RightTopOrientation"
  "RightBottomOrientation"
  "LeftBottomOrientation"
}

interlace = enum {
  [0]: "UndefinedInterlace"
  "NoInterlace"
  "LineInterlace"
  "PlaneInterlace"
  "PartitionInterlace"
  "GIFInterlace"
  "JPEGInterlace"
  "PNGInterlace"
}

{ :composite_operators, :gravity, :orientation, :interlace }
