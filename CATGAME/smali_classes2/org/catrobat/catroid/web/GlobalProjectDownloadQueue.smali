.class public final Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue;
.super Ljava/lang/Object;
.source "ProjectDownloader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue$ProjectDownloadQueue;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u0007B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue;",
        "",
        "()V",
        "queue",
        "Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue$ProjectDownloadQueue;",
        "getQueue",
        "()Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue$ProjectDownloadQueue;",
        "ProjectDownloadQueue",
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
.field public static final INSTANCE:Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue;

.field private static final queue:Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue$ProjectDownloadQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    new-instance v0, Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue;

    invoke-direct {v0}, Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue;->INSTANCE:Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue;

    .line 161
    new-instance v0, Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue$ProjectDownloadQueue;

    invoke-direct {v0}, Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue$ProjectDownloadQueue;-><init>()V

    sput-object v0, Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue;->queue:Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue$ProjectDownloadQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getQueue()Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue$ProjectDownloadQueue;
    .locals 1

    .line 161
    sget-object v0, Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue;->queue:Lorg/catrobat/catroid/web/GlobalProjectDownloadQueue$ProjectDownloadQueue;

    return-object v0
.end method
