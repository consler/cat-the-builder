.class public abstract Lorg/catrobat/catroid/content/actions/AssertAction;
.super Lcom/badlogic/gdx/scenes/scene2d/Action;
.source "AssertAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0010\r\n\u0000\u0008&\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004H\u0004J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0004H\u0004J\u0008\u0010\u0019\u001a\u00020\u0004H\u0002J\u0018\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\u001b2\u0006\u0010\u0015\u001a\u00020\u001bH\u0004J\u001c\u0010\u001c\u001a\u00020\u001d2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u001e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u001eH\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001f"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/AssertAction;",
        "Lcom/badlogic/gdx/scenes/scene2d/Action;",
        "()V",
        "assertTitle",
        "",
        "getAssertTitle",
        "()Ljava/lang/String;",
        "setAssertTitle",
        "(Ljava/lang/String;)V",
        "position",
        "getPosition",
        "setPosition",
        "scope",
        "Lorg/catrobat/catroid/content/Scope;",
        "getScope",
        "()Lorg/catrobat/catroid/content/Scope;",
        "setScope",
        "(Lorg/catrobat/catroid/content/Scope;)V",
        "equalValues",
        "",
        "actual",
        "expected",
        "failWith",
        "",
        "message",
        "formattedPosition",
        "generateIndicator",
        "",
        "indexOfDifference",
        "",
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


# instance fields
.field private assertTitle:Ljava/lang/String;

.field private position:Ljava/lang/String;

.field private scope:Lorg/catrobat/catroid/content/Scope;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/badlogic/gdx/scenes/scene2d/Action;-><init>()V

    .line 33
    const-string v0, "\nAssertError\n"

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertAction;->assertTitle:Ljava/lang/String;

    return-void
.end method

.method private final formattedPosition()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on sprite \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/AssertAction;->scope:Lorg/catrobat/catroid/content/Scope;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Scope;->getSprite()Lorg/catrobat/catroid/content/Sprite;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/catrobat/catroid/content/Sprite;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/AssertAction;->position:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 76
    return-object v0
.end method

.method private final indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 3
    .param p1, "actual"    # Ljava/lang/CharSequence;
    .param p2, "expected"    # Ljava/lang/CharSequence;

    .line 57
    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_2

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 61
    .local v0, "position":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 62
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 63
    goto :goto_1

    .line 65
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 61
    goto :goto_0

    .line 67
    :cond_2
    :goto_1
    return v0

    .line 58
    .end local v0    # "position":I
    :cond_3
    :goto_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected final equalValues(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "actual"    # Ljava/lang/String;
    .param p2, "expected"    # Ljava/lang/String;

    const-string v0, "actual"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expected"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    nop

    .line 47
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-double v1, v1, v3

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "numberFormatException":Ljava/lang/NumberFormatException;
    nop

    .line 46
    .end local v1    # "numberFormatException":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    return v0
.end method

.method protected final failWith(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    nop

    .line 37
    new-instance v0, Lorg/catrobat/catroid/stage/TestResult;

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/AssertAction;->formattedPosition()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lorg/catrobat/catroid/content/actions/AssertAction;->assertTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 40
    nop

    .line 37
    const/16 v2, 0x22b8

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/stage/TestResult;-><init>(Ljava/lang/String;I)V

    .line 36
    invoke-static {v0}, Lorg/catrobat/catroid/stage/StageActivity;->finishTestWithResult(Lorg/catrobat/catroid/stage/TestResult;)V

    .line 43
    return-void
.end method

.method protected final generateIndicator(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p1, "actual"    # Ljava/lang/Object;
    .param p2, "expected"    # Ljava/lang/Object;

    const-string v0, "actual"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "expected"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lorg/catrobat/catroid/content/actions/AssertAction;->indexOfDifference(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 72
    .local v0, "errorPosition":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-array v2, v0, [C

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    const/4 v4, 0x0

    const/16 v5, 0x2d

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final getAssertTitle()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertAction;->assertTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosition()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertAction;->position:Ljava/lang/String;

    return-object v0
.end method

.method public final getScope()Lorg/catrobat/catroid/content/Scope;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-object v0
.end method

.method public final setAssertTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AssertAction;->assertTitle:Ljava/lang/String;

    return-void
.end method

.method public final setPosition(Ljava/lang/String;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AssertAction;->position:Ljava/lang/String;

    return-void
.end method

.method public final setScope(Lorg/catrobat/catroid/content/Scope;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/content/Scope;

    .line 32
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AssertAction;->scope:Lorg/catrobat/catroid/content/Scope;

    return-void
.end method
