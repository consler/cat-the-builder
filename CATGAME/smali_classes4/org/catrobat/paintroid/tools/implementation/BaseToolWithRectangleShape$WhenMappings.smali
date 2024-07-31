.class public final synthetic Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;
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


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 8

    invoke-static {}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->values()[Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->MOVE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->RESIZE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->ROTATE:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$FloatingBoxAction;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    invoke-static {}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->values()[Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->LEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->RIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->values()[Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->LEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$2:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->RIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    aput v3, v0, v1

    invoke-static {}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->values()[Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOP:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOPRIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOPLEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOM:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOMLEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    const/4 v6, 0x5

    aput v6, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$3:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOMRIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    const/4 v7, 0x6

    aput v7, v0, v1

    invoke-static {}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->values()[Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->LEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOPLEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOMLEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->RIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOPRIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$4:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOMRIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    aput v7, v0, v1

    invoke-static {}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->values()[Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$5:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOPLEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$5:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOMRIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$5:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOPRIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$5:[I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOMLEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    aput v5, v0, v1

    return-void
.end method
