.class public final Lorg/catrobat/catroid/devices/multiplayer/Multiplayer$Companion;
.super Ljava/lang/Object;
.source "Multiplayer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/catrobat/catroid/devices/multiplayer/Multiplayer$Companion;",
        "",
        "()V",
        "MULTIPLAYER_UUID",
        "Ljava/util/UUID;",
        "getMULTIPLAYER_UUID",
        "()Ljava/util/UUID;",
        "READ_BLOCKSIZE",
        "",
        "TAG",
        "",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 169
    invoke-direct {p0}, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getMULTIPLAYER_UUID()Ljava/util/UUID;
    .locals 1

    .line 170
    invoke-static {}, Lorg/catrobat/catroid/devices/multiplayer/Multiplayer;->access$getMULTIPLAYER_UUID$cp()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method
