.class public final Lorg/catrobat/catroid/devices/multiplayer/MultiplayerVariableMessage;
.super Ljava/lang/Object;
.source "Multiplayer.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/devices/multiplayer/MultiplayerVariableMessage$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0007\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0017\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/catrobat/catroid/devices/multiplayer/MultiplayerVariableMessage;",
        "Ljava/io/Serializable;",
        "name",
        "",
        "value",
        "",
        "(Ljava/lang/String;Ljava/lang/Object;)V",
        "getName",
        "()Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/Object;",
        "Companion",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/catroid/devices/multiplayer/MultiplayerVariableMessage$Companion;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final name:Ljava/lang/String;

.field private final value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/devices/multiplayer/MultiplayerVariableMessage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/devices/multiplayer/MultiplayerVariableMessage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/devices/multiplayer/MultiplayerVariableMessage;->Companion:Lorg/catrobat/catroid/devices/multiplayer/MultiplayerVariableMessage$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/devices/multiplayer/MultiplayerVariableMessage;->name:Ljava/lang/String;

    iput-object p2, p0, Lorg/catrobat/catroid/devices/multiplayer/MultiplayerVariableMessage;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/catrobat/catroid/devices/multiplayer/MultiplayerVariableMessage;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 176
    iget-object v0, p0, Lorg/catrobat/catroid/devices/multiplayer/MultiplayerVariableMessage;->value:Ljava/lang/Object;

    return-object v0
.end method
