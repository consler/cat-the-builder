.class public final synthetic Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I

.field public static final synthetic $EnumSwitchMapping$2:[I

.field public static final synthetic $EnumSwitchMapping$3:[I

.field public static final synthetic $EnumSwitchMapping$4:[I

.field public static final synthetic $EnumSwitchMapping$5:[I

.field public static final synthetic $EnumSwitchMapping$6:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 23

    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/Sensors;->values()[Lorg/catrobat/catroid/formulaeditor/Sensors;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->FACE_DETECTED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->FACE_SIZE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->FACE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->FACE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->SECOND_FACE_DETECTED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v6, 0x5

    aput v6, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->SECOND_FACE_SIZE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v7, 0x6

    aput v7, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->SECOND_FACE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v8, 0x7

    aput v8, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->SECOND_FACE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v9, 0x8

    aput v9, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->TEXT_FROM_CAMERA:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v10, 0x9

    aput v10, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->TEXT_BLOCKS_NUMBER:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v11, 0xa

    aput v11, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->TEXT_BLOCK_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v12, 0xb

    aput v12, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->TEXT_BLOCK_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v13, 0xc

    aput v13, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->TEXT_BLOCK_SIZE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v14, 0xd

    aput v14, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->TEXT_BLOCK_FROM_CAMERA:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v15, 0xe

    aput v15, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->TEXT_BLOCK_LANGUAGE_FROM_CAMERA:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v16, 0xf

    aput v16, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->SPEECH_RECOGNITION_LANGUAGE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v17, 0x10

    aput v17, v0, v1

    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/Functions;->values()[Lorg/catrobat/catroid/formulaeditor/Functions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->ID_OF_DETECTED_OBJECT:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->OBJECT_WITH_ID_VISIBLE:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/Sensors;->values()[Lorg/catrobat/catroid/formulaeditor/Sensors;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->HEAD_TOP_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->HEAD_TOP_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NECK_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NECK_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NOSE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NOSE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v7, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EYE_INNER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v8, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EYE_INNER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v9, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EYE_CENTER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v10, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EYE_CENTER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v11, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EYE_OUTER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v12, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EYE_OUTER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v13, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EYE_INNER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v14, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EYE_INNER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v15, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EYE_CENTER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v16, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EYE_CENTER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v17, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EYE_OUTER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v18, 0x11

    aput v18, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EYE_OUTER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v19, 0x12

    aput v19, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EAR_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v20, 0x13

    aput v20, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_EAR_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v21, 0x14

    aput v21, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EAR_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x15

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_EAR_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x16

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->MOUTH_LEFT_CORNER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x17

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->MOUTH_LEFT_CORNER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x18

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->MOUTH_RIGHT_CORNER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x19

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->MOUTH_RIGHT_CORNER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x1a

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_SHOULDER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x1b

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_SHOULDER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x1c

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_SHOULDER_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x1d

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_SHOULDER_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x1e

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_ELBOW_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x1f

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_ELBOW_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x20

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_ELBOW_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x21

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_ELBOW_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x22

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_WRIST_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x23

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_WRIST_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x24

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_WRIST_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x25

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_WRIST_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x26

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_PINKY_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x27

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_PINKY_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x28

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_PINKY_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x29

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_PINKY_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x2a

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_INDEX_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x2b

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_INDEX_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x2c

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_INDEX_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x2d

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_INDEX_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x2e

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_THUMB_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x2f

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_THUMB_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x30

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_THUMB_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x31

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_THUMB_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x32

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_HIP_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x33

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_HIP_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x34

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_HIP_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x35

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_HIP_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x36

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_KNEE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x37

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_KNEE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x38

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_KNEE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x39

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_KNEE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x3a

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_ANKLE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x3b

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_ANKLE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x3c

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_ANKLE_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x3d

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_ANKLE_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x3e

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_HEEL_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x3f

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_HEEL_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x40

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_HEEL_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x41

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_HEEL_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x42

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_FOOT_INDEX_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x43

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LEFT_FOOT_INDEX_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x44

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_FOOT_INDEX_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x45

    aput v22, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->RIGHT_FOOT_INDEX_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v22, 0x46

    aput v22, v0, v1

    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/Sensors;->values()[Lorg/catrobat/catroid/formulaeditor/Sensors;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->X_ACCELERATION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->Y_ACCELERATION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->Z_ACCELERATION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->X_INCLINATION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->Y_INCLINATION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->COMPASS_DIRECTION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v7, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LATITUDE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v8, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LONGITUDE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v9, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LOCATION_ACCURACY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v10, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->ALTITUDE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v11, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NFC_TAG_MESSAGE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v12, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NFC_TAG_ID:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v13, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LOUDNESS:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v14, v0, v1

    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/Sensors;->values()[Lorg/catrobat/catroid/formulaeditor/Sensors;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NXT_SENSOR_1:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NXT_SENSOR_2:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NXT_SENSOR_3:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NXT_SENSOR_4:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->EV3_SENSOR_1:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->EV3_SENSOR_2:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v7, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->EV3_SENSOR_3:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v8, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->EV3_SENSOR_4:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v9, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_FRONT_LEFT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v10, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_FRONT_RIGHT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v11, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_SIDE_LEFT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v12, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_SIDE_RIGHT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v13, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_BOTTOM_LEFT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v14, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->PHIRO_BOTTOM_RIGHT:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v15, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_A_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v16, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_B_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v17, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_DOWN_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v18, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_UP_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v19, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_LEFT_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v20, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->GAMEPAD_RIGHT_PRESSED:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v21, v0, v1

    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/Sensors;->values()[Lorg/catrobat/catroid/formulaeditor/Sensors;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$5:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->COLLIDES_WITH_EDGE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$5:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->COLLIDES_WITH_FINGER:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/Functions;->values()[Lorg/catrobat/catroid/formulaeditor/Functions;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$6:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->ARDUINOANALOG:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$6:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->ARDUINODIGITAL:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementResources$WhenMappings;->$EnumSwitchMapping$6:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Functions;->RASPIDIGITAL:Lorg/catrobat/catroid/formulaeditor/Functions;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Functions;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method
