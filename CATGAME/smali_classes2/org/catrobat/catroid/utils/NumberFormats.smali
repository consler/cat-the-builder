.class public final Lorg/catrobat/catroid/utils/NumberFormats;
.super Ljava/lang/Object;
.source "NumberFormats.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/utils/NumberFormats$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lorg/catrobat/catroid/utils/NumberFormats;",
        "",
        "()V",
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
.field public static final Companion:Lorg/catrobat/catroid/utils/NumberFormats$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/utils/NumberFormats$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/utils/NumberFormats$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/utils/NumberFormats;->Companion:Lorg/catrobat/catroid/utils/NumberFormats$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final toMetricUnitRepresentation(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lorg/catrobat/catroid/utils/NumberFormats;->Companion:Lorg/catrobat/catroid/utils/NumberFormats$Companion;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/utils/NumberFormats$Companion;->toMetricUnitRepresentation(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final trimTrailingCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lorg/catrobat/catroid/utils/NumberFormats;->Companion:Lorg/catrobat/catroid/utils/NumberFormats$Companion;

    invoke-virtual {v0, p0}, Lorg/catrobat/catroid/utils/NumberFormats$Companion;->trimTrailingCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
