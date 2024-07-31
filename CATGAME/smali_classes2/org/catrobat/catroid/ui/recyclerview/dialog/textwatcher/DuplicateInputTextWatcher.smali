.class public Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;
.super Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;
.source "DuplicateInputTextWatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/catrobat/catroid/common/Nameable;",
        ">",
        "Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;"
    }
.end annotation


# instance fields
.field private originalScope:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 34
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;, "Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher<TT;>;"
    .local p1, "originalScope":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/InputWatcher$TextWatcher;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;->originalScope:Ljava/util/List;

    .line 36
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;->getScopeFromOriginalScope()V

    .line 37
    return-void
.end method

.method private getScopeFromOriginalScope()V
    .locals 4

    .line 43
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;, "Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher<TT;>;"
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;->originalScope:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 44
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/catrobat/catroid/common/Nameable;

    .line 45
    .local v1, "item":Lorg/catrobat/catroid/common/Nameable;
    iget-object v2, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;->scope:Ljava/util/List;

    invoke-interface {v1}, Lorg/catrobat/catroid/common/Nameable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .end local v1    # "item":Lorg/catrobat/catroid/common/Nameable;
    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public setOriginalScope(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;, "Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher<TT;>;"
    .local p1, "scope":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;->originalScope:Ljava/util/List;

    .line 40
    invoke-direct {p0}, Lorg/catrobat/catroid/ui/recyclerview/dialog/textwatcher/DuplicateInputTextWatcher;->getScopeFromOriginalScope()V

    .line 41
    return-void
.end method
