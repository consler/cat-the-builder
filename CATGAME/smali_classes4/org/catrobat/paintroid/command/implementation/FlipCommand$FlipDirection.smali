.class public final enum Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;
.super Ljava/lang/Enum;
.source "FlipCommand.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/command/implementation/FlipCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlipDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;",
        "",
        "(Ljava/lang/String;I)V",
        "FLIP_HORIZONTAL",
        "FLIP_VERTICAL",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

.field public static final enum FLIP_HORIZONTAL:Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

.field public static final enum FLIP_VERTICAL:Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    new-instance v1, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    const-string v2, "FLIP_HORIZONTAL"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;->FLIP_HORIZONTAL:Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    aput-object v1, v0, v3

    new-instance v1, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    const-string v2, "FLIP_VERTICAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;->FLIP_VERTICAL:Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    aput-object v1, v0, v3

    sput-object v0, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;->$VALUES:[Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;
    .locals 1

    const-class v0, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    return-object p0
.end method

.method public static values()[Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;
    .locals 1

    sget-object v0, Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;->$VALUES:[Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    invoke-virtual {v0}, [Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/catrobat/paintroid/command/implementation/FlipCommand$FlipDirection;

    return-object v0
.end method
