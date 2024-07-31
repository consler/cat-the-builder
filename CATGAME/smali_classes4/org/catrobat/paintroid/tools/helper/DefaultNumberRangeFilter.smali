.class public final Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;
.super Ljava/lang/Object;
.source "DefaultNumberRangeFilter.kt"

# interfaces
.implements Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\r\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J:\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u00032\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0003H\u0016R\u001a\u0010\u0004\u001a\u00020\u0003X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;",
        "Lorg/catrobat/paintroid/ui/tools/NumberRangeFilter;",
        "min",
        "",
        "max",
        "(II)V",
        "getMax",
        "()I",
        "setMax",
        "(I)V",
        "filter",
        "",
        "source",
        "start",
        "end",
        "dest",
        "Landroid/text/Spanned;",
        "dstart",
        "dend",
        "Companion",
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
.field public static final Companion:Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private max:I

.field private final min:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;->Companion:Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter$Companion;

    .line 27
    const-class v0, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;->min:I

    iput p2, p0, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;->max:I

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dest"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    nop

    .line 39
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 40
    .local v0, "input":I
    iget v1, p0, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;->min:I

    invoke-virtual {p0}, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;->getMax()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-lt v2, v0, :cond_1

    .line 41
    const/4 v1, 0x0

    return-object v1

    .line 43
    .end local v0    # "input":I
    :catch_0
    move-exception v0

    .line 44
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .local v1, "it":Ljava/lang/String;
    const/4 v2, 0x0

    .line 45
    .local v2, "$i$a$-let-DefaultNumberRangeFilter$filter$1":I
    sget-object v3, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .end local v1    # "it":Ljava/lang/String;
    .end local v2    # "$i$a$-let-DefaultNumberRangeFilter$filter$1":I
    nop

    .line 47
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    nop

    .line 48
    const-string v0, ""

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getMax()I
    .locals 1

    .line 25
    iget v0, p0, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;->max:I

    return v0
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 25
    iput p1, p0, Lorg/catrobat/paintroid/tools/helper/DefaultNumberRangeFilter;->max:I

    return-void
.end method
