.class public final Lorg/catrobat/paintroid/PaintroidApplication;
.super Ljava/lang/Object;
.source "PaintroidApplication.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/PaintroidApplication$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/catrobat/paintroid/PaintroidApplication;",
        "",
        "()V",
        "Companion",
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


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/PaintroidApplication$Companion;

.field private static cacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/PaintroidApplication$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/PaintroidApplication$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/PaintroidApplication;->Companion:Lorg/catrobat/paintroid/PaintroidApplication$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public static final synthetic access$getCacheDir$cp()Ljava/io/File;
    .locals 1

    .line 24
    sget-object v0, Lorg/catrobat/paintroid/PaintroidApplication;->cacheDir:Ljava/io/File;

    return-object v0
.end method

.method public static final synthetic access$setCacheDir$cp(Ljava/io/File;)V
    .locals 0

    .line 24
    sput-object p0, Lorg/catrobat/paintroid/PaintroidApplication;->cacheDir:Ljava/io/File;

    return-void
.end method

.method public static final getCacheDir()Ljava/io/File;
    .locals 1

    sget-object v0, Lorg/catrobat/paintroid/PaintroidApplication;->Companion:Lorg/catrobat/paintroid/PaintroidApplication$Companion;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/PaintroidApplication$Companion;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static final setCacheDir(Ljava/io/File;)V
    .locals 1

    sget-object v0, Lorg/catrobat/paintroid/PaintroidApplication;->Companion:Lorg/catrobat/paintroid/PaintroidApplication$Companion;

    invoke-virtual {v0, p0}, Lorg/catrobat/paintroid/PaintroidApplication$Companion;->setCacheDir(Ljava/io/File;)V

    return-void
.end method
