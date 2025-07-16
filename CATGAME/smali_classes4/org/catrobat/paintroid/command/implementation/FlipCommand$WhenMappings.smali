.class public final synthetic Lorg/catrobat/paintroid/command/implementation/FlipCommand$WhenMappings;
.super Ljava/lang/Object;
.source "FlipCommand.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/command/implementation/FlipCommand;
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

    invoke-static {}, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;->values()[Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;->FLIP_HORIZONTAL:Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;->FLIP_VERTICAL:Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lorg/catrobat/paintroid/command/implementation/FlipCommand$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
