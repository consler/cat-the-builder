.class public Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;
.super Ljava/lang/Object;
.source "UniqueNameProvider.java"

# interfaces
.implements Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProviderInterface;


# instance fields
.field private scope:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 37
    .local p2, "scope":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p2, p0, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->scope:Ljava/util/List;

    .line 39
    invoke-virtual {p0, p1}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->isUnique(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    return-object p1

    .line 43
    :cond_0
    const-string v0, "\\((\\d+)\\)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 44
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 46
    .local v1, "matcher":Ljava/util/regex/Matcher;
    const/4 v2, 0x1

    .line 48
    .local v2, "n":I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 49
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 50
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 53
    :cond_1
    :goto_0
    const v3, 0x7fffffff

    if-ge v2, v3, :cond_3

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    .local v3, "newName":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->isUnique(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    return-object v3

    .line 58
    :cond_2
    nop

    .end local v3    # "newName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 59
    goto :goto_0

    .line 61
    :cond_3
    return-object p1
.end method

.method public getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lorg/catrobat/catroid/common/Nameable;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 70
    .local p2, "scope":Ljava/util/List;, "Ljava/util/List<+Lorg/catrobat/catroid/common/Nameable;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v0, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/catrobat/catroid/common/Nameable;

    .line 72
    .local v2, "nameable":Lorg/catrobat/catroid/common/Nameable;
    invoke-interface {v2}, Lorg/catrobat/catroid/common/Nameable;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .end local v2    # "nameable":Lorg/catrobat/catroid/common/Nameable;
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0, p1, v0}, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->getUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isUnique(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newName"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProvider;->scope:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
