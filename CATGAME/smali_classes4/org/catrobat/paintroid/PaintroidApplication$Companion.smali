.class public final Lorg/catrobat/paintroid/PaintroidApplication$Companion;
.super Ljava/lang/Object;
.source "PaintroidApplication.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/PaintroidApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R&\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lorg/catrobat/paintroid/PaintroidApplication$Companion;",
        "",
        "()V",
        "cacheDir",
        "Ljava/io/File;",
        "getCacheDir$annotations",
        "getCacheDir",
        "()Ljava/io/File;",
        "setCacheDir",
        "(Ljava/io/File;)V",
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/catrobat/paintroid/PaintroidApplication$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getCacheDir$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getCacheDir()Ljava/io/File;
    .locals 1

    .line 28
    invoke-static {}, Lorg/catrobat/paintroid/PaintroidApplication;->access$getCacheDir$cp()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final setCacheDir(Ljava/io/File;)V
    .locals 0

    .line 28
    invoke-static {p1}, Lorg/catrobat/paintroid/PaintroidApplication;->access$setCacheDir$cp(Ljava/io/File;)V

    return-void
.end method
