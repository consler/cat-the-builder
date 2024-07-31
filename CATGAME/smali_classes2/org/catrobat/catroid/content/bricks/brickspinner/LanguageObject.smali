.class public final Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;
.super Ljava/lang/Object;
.source "LanguageObject.kt"

# interfaces
.implements Lorg/catrobat/catroid/common/Nameable;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAlias;
    value = "languageObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \u001b2\u00020\u00012\u00020\u0002:\u0001\u001bB\u0015\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0004H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0004H\u00c6\u0003J\u001d\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\u0008\u0010\u0014\u001a\u00020\u0004H\u0016J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001J\u0010\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0004H\u0016J\t\u0010\u001a\u001a\u00020\u0004H\u00d6\u0001R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u0005\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0008\"\u0004\u0008\u000c\u0010\n\u00a8\u0006\u001c"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;",
        "Lorg/catrobat/catroid/common/Nameable;",
        "Ljava/io/Serializable;",
        "languageName",
        "",
        "languageTag",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getLanguageName",
        "()Ljava/lang/String;",
        "setLanguageName",
        "(Ljava/lang/String;)V",
        "getLanguageTag",
        "setLanguageTag",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "getName",
        "hashCode",
        "",
        "setName",
        "",
        "name",
        "toString",
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

.annotation runtime Lorg/catrobat/catroid/io/XStreamFieldKeyOrder;
    value = {
        "languageName",
        "languageTag"
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject$Companion;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private languageName:Ljava/lang/String;

.field private languageTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->Companion:Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "languageName"    # Ljava/lang/String;
    .param p2, "languageTag"    # Ljava/lang/String;

    const-string v0, "languageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languageTag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageName:Ljava/lang/String;

    iput-object p2, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageTag:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageTag:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->copy(Ljava/lang/String;Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageTag:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;
    .locals 1

    const-string v0, "languageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languageTag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;

    invoke-direct {v0, p1, p2}, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;

    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageName:Ljava/lang/String;

    iget-object v1, p1, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageTag:Ljava/lang/String;

    iget-object p1, p1, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageTag:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getLanguageName()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguageTag()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageTag:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageTag:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setLanguageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageName:Ljava/lang/String;

    return-void
.end method

.method public final setLanguageTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageTag:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LanguageObject(languageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", languageTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/content/bricks/brickspinner/LanguageObject;->languageTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
