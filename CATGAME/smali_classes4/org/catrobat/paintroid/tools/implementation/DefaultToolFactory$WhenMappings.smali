.class public final synthetic Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory$WhenMappings;
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

    invoke-static {}, Lorg/catrobat/paintroid/tools/ToolType;->values()[Lorg/catrobat/paintroid/tools/ToolType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->CURSOR:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->STAMP:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->IMPORTPNG:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->PIPETTE:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->FILL:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->TRANSFORM:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->SHAPE:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->ERASER:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->LINE:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->TEXT:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->HAND:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->SPRAY:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->WATERCOLOR:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/DefaultToolFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/ToolType;->SMUDGE:Lorg/catrobat/paintroid/tools/ToolType;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/ToolType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1

    return-void
.end method
