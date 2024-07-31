.class public final synthetic Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;
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


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/catrobat/catroid/formulaeditor/Sensors;->values()[Lorg/catrobat/catroid/formulaeditor/Sensors;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_BRIGHTNESS:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_COLOR:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_TRANSPARENCY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_LAYER:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->MOTION_DIRECTION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->LOOK_DIRECTION:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_SIZE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_X:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_Y:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_ANGULAR_VELOCITY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_X_VELOCITY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_Y_VELOCITY:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_DISTANCE_TO:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_LOOK_NUMBER:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_BACKGROUND_NUMBER:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_NUMBER_OF_LOOKS:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_LOOK_NAME:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->OBJECT_BACKGROUND_NAME:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NFC_TAG_MESSAGE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->NFC_TAG_ID:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->COLLIDES_WITH_EDGE:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/catroid/formulaeditor/common/FormulaElementOperations$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/catroid/formulaeditor/Sensors;->COLLIDES_WITH_FINGER:Lorg/catrobat/catroid/formulaeditor/Sensors;

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/Sensors;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1

    return-void
.end method
