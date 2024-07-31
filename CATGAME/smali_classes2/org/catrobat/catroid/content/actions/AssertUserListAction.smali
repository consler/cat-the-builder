.class public final Lorg/catrobat/catroid/content/actions/AssertUserListAction;
.super Lorg/catrobat/catroid/content/actions/AssertAction;
.source "AssertUserListAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J \u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001aH\u0002J\u0008\u0010\u001c\u001a\u00020\u001dH\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u001e"
    }
    d2 = {
        "Lorg/catrobat/catroid/content/actions/AssertUserListAction;",
        "Lorg/catrobat/catroid/content/actions/AssertAction;",
        "()V",
        "actualUserList",
        "Lorg/catrobat/catroid/formulaeditor/UserList;",
        "getActualUserList",
        "()Lorg/catrobat/catroid/formulaeditor/UserList;",
        "setActualUserList",
        "(Lorg/catrobat/catroid/formulaeditor/UserList;)V",
        "expectedUserList",
        "getExpectedUserList",
        "setExpectedUserList",
        "message",
        "",
        "getMessage",
        "()Ljava/lang/String;",
        "setMessage",
        "(Ljava/lang/String;)V",
        "act",
        "",
        "delta",
        "",
        "formattedAssertError",
        "listPosition",
        "",
        "actual",
        "",
        "expected",
        "validateLists",
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
.field private actualUserList:Lorg/catrobat/catroid/formulaeditor/UserList;

.field private expectedUserList:Lorg/catrobat/catroid/formulaeditor/UserList;

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/AssertAction;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->message:Ljava/lang/String;

    return-void
.end method

.method private final formattedAssertError(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "listPosition"    # I
    .param p2, "actual"    # Ljava/lang/Object;
    .param p3, "expected"    # Ljava/lang/Object;

    .line 83
    invoke-virtual {p0, p2, p3}, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->generateIndicator(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "indicator":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "expected: <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ">\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "actual:   <"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "deviation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    return-object v1
.end method

.method private final validateLists()V
    .locals 8

    .line 56
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->actualUserList:Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v0

    .line 57
    .local v0, "actualList":Ljava/util/List;
    iget-object v1, p0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->expectedUserList:Lorg/catrobat/catroid/formulaeditor/UserList;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lorg/catrobat/catroid/formulaeditor/UserList;->getValue()Ljava/util/List;

    move-result-object v1

    .line 58
    .local v1, "expectedList":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The number of list elements are not equal\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "expected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " element/s\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "actual:   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->message:Ljava/lang/String;

    .line 63
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ltz v3, :cond_2

    .line 64
    .local v2, "listPosition":I
    :goto_0
    nop

    .line 65
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-virtual {p0, v4, v5}, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->equalValues(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 69
    iget-object v4, p0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->message:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    nop

    .line 71
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "actualList[listPosition]"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "expectedList[listPosition]"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, v2, v4, v6}, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->formattedAssertError(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->message:Ljava/lang/String;

    .line 63
    :cond_1
    if-eq v2, v3, :cond_2

    .end local v2    # "listPosition":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_2
    return-void
.end method


# virtual methods
.method public act(F)Z
    .locals 3
    .param p1, "delta"    # F

    .line 33
    const-string v0, "\nAssertUserListError\n"

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->setAssertTitle(Ljava/lang/String;)V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->message:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->actualUserList:Lorg/catrobat/catroid/formulaeditor/UserList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 37
    const-string v0, "Actual list is null"

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->failWith(Ljava/lang/String;)V

    .line 38
    return v1

    .line 40
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->expectedUserList:Lorg/catrobat/catroid/formulaeditor/UserList;

    if-nez v0, :cond_1

    .line 41
    const-string v0, "Expected list is null"

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->failWith(Ljava/lang/String;)V

    .line 42
    return v1

    .line 45
    :cond_1
    invoke-direct {p0}, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->validateLists()V

    .line 47
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->message:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 48
    move v1, v2

    goto :goto_1

    .line 50
    :cond_3
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->message:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->failWith(Ljava/lang/String;)V

    .line 51
    nop

    .line 47
    :goto_1
    return v1
.end method

.method public final getActualUserList()Lorg/catrobat/catroid/formulaeditor/UserList;
    .locals 1

    .line 28
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->actualUserList:Lorg/catrobat/catroid/formulaeditor/UserList;

    return-object v0
.end method

.method public final getExpectedUserList()Lorg/catrobat/catroid/formulaeditor/UserList;
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->expectedUserList:Lorg/catrobat/catroid/formulaeditor/UserList;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final setActualUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 28
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->actualUserList:Lorg/catrobat/catroid/formulaeditor/UserList;

    return-void
.end method

.method public final setExpectedUserList(Lorg/catrobat/catroid/formulaeditor/UserList;)V
    .locals 0
    .param p1, "<set-?>"    # Lorg/catrobat/catroid/formulaeditor/UserList;

    .line 29
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->expectedUserList:Lorg/catrobat/catroid/formulaeditor/UserList;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lorg/catrobat/catroid/content/actions/AssertUserListAction;->message:Ljava/lang/String;

    return-void
.end method
