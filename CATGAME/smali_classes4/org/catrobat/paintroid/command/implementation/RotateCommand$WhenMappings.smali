.class public final synthetic Lorg/catrobat/paintroid/command/implementation/RotateCommand$WhenMappings;
.super Ljava/lang/Object;
.source "RotateCommand.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/command/implementation/RotateCommand;
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

    invoke-static {}, Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;->values()[Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;->ROTATE_RIGHT:Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;->ROTATE_LEFT:Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;

    invoke-virtual {v1}, Lorg/catrobat/paintroid/command/implementation/RotateCommand$RotateDirection;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lorg/catrobat/paintroid/command/implementation/RotateCommand$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
