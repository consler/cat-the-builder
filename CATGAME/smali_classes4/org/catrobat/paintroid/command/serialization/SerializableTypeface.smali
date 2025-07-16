.class public final Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;
.super Ljava/lang/Object;
.source "SerializableTypeface.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/command/serialization/SerializableTypeface$TypefaceSerializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0015\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\"B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\tH\u00c6\u0003J\t\u0010\u001a\u001a\u00020\tH\u00c6\u0003JE\u0010\u001b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u001c\u001a\u00020\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001J\t\u0010 \u001a\u00020!H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\n\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\r\u00a8\u0006#"
    }
    d2 = {
        "Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;",
        "",
        "font",
        "Lorg/catrobat/paintroid/tools/FontType;",
        "bold",
        "",
        "underline",
        "italic",
        "textSize",
        "",
        "textSkewX",
        "(Lorg/catrobat/paintroid/tools/FontType;ZZZFF)V",
        "getBold",
        "()Z",
        "getFont",
        "()Lorg/catrobat/paintroid/tools/FontType;",
        "getItalic",
        "getTextSize",
        "()F",
        "getTextSkewX",
        "getUnderline",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "TypefaceSerializer",
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


# instance fields
.field private final bold:Z

.field private final font:Lorg/catrobat/paintroid/tools/FontType;

.field private final italic:Z

.field private final textSize:F

.field private final textSkewX:F

.field private final underline:Z


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/FontType;ZZZFF)V
    .locals 1

    const-string v0, "font"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->font:Lorg/catrobat/paintroid/tools/FontType;

    iput-boolean p2, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->bold:Z

    iput-boolean p3, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->underline:Z

    iput-boolean p4, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->italic:Z

    iput p5, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->textSize:F

    iput p6, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->textSkewX:F

    return-void
.end method

.method public static synthetic copy$default(Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;Lorg/catrobat/paintroid/tools/FontType;ZZZFFILjava/lang/Object;)Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->font:Lorg/catrobat/paintroid/tools/FontType;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-boolean p2, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->bold:Z

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->underline:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->italic:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->textSize:F

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->textSkewX:F

    :cond_5
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->copy(Lorg/catrobat/paintroid/tools/FontType;ZZZFF)Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lorg/catrobat/paintroid/tools/FontType;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->font:Lorg/catrobat/paintroid/tools/FontType;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->bold:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->underline:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->italic:Z

    return v0
.end method

.method public final component5()F
    .locals 1

    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->textSize:F

    return v0
.end method

.method public final component6()F
    .locals 1

    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->textSkewX:F

    return v0
.end method

.method public final copy(Lorg/catrobat/paintroid/tools/FontType;ZZZFF)Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;
    .locals 8

    const-string v0, "font"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;-><init>(Lorg/catrobat/paintroid/tools/FontType;ZZZFF)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;

    iget-object v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->font:Lorg/catrobat/paintroid/tools/FontType;

    iget-object v3, p1, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->font:Lorg/catrobat/paintroid/tools/FontType;

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->bold:Z

    iget-boolean v3, p1, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->bold:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->underline:Z

    iget-boolean v3, p1, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->underline:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->italic:Z

    iget-boolean v3, p1, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->italic:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->textSize:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, p1, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->textSize:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->textSkewX:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p1, p1, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->textSkewX:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getBold()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->bold:Z

    return v0
.end method

.method public final getFont()Lorg/catrobat/paintroid/tools/FontType;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->font:Lorg/catrobat/paintroid/tools/FontType;

    return-object v0
.end method

.method public final getItalic()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->italic:Z

    return v0
.end method

.method public final getTextSize()F
    .locals 1

    .line 26
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->textSize:F

    return v0
.end method

.method public final getTextSkewX()F
    .locals 1

    .line 26
    iget v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->textSkewX:F

    return v0
.end method

.method public final getUnderline()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->underline:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->font:Lorg/catrobat/paintroid/tools/FontType;

    invoke-virtual {v0}, Lorg/catrobat/paintroid/tools/FontType;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->bold:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->underline:Z

    if-eqz v1, :cond_1

    move v1, v2

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->italic:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->textSize:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->textSkewX:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SerializableTypeface(font="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->font:Lorg/catrobat/paintroid/tools/FontType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->bold:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", underline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->underline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", italic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->italic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->textSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textSkewX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/catrobat/paintroid/command/serialization/SerializableTypeface;->textSkewX:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
