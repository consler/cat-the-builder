.class public final synthetic Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;
.super Ljava/lang/Object;
.source "BaseToolWithRectangleShape.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->values()[Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->LEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->RIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOP:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOPRIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->TOPLEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOM:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOMLEFT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->BOTTOMRIGHT:Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$ResizeAction;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sput-object v0, Lorg/catrobat/paintroid/tools/implementation/BaseToolWithRectangleShape$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
