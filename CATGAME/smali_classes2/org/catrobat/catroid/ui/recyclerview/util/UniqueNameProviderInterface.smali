.class public interface abstract Lorg/catrobat/catroid/ui/recyclerview/util/UniqueNameProviderInterface;
.super Ljava/lang/Object;
.source "UniqueNameProviderInterface.java"


# virtual methods
.method public abstract getUniqueName(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
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
.end method

.method public abstract getUniqueNameInNameables(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
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
.end method

.method public abstract isUnique(Ljava/lang/String;)Z
.end method
