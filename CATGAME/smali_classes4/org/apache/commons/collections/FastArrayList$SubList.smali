.class Lorg/apache/commons/collections/FastArrayList$SubList;
.super Ljava/lang/Object;
.source "FastArrayList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/FastArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;
    }
.end annotation


# instance fields
.field private expected:Ljava/util/List;

.field private first:I

.field private last:I

.field private final synthetic this$0:Lorg/apache/commons/collections/FastArrayList;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/FastArrayList;II)V
    .locals 0

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    .line 843
    iput p2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->first:I

    .line 844
    iput p3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 845
    iget-object p1, p1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iput-object p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/FastArrayList$SubList;)Lorg/apache/commons/collections/FastArrayList;
    .locals 0

    .line 835
    iget-object p0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/FastArrayList$SubList;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 835
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$208(Lorg/apache/commons/collections/FastArrayList$SubList;)I
    .locals 2

    .line 835
    iget v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    return v0
.end method

.method static synthetic access$210(Lorg/apache/commons/collections/FastArrayList$SubList;)I
    .locals 2

    .line 835
    iget v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    return v0
.end method

.method private get(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 849
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 852
    iget v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->first:I

    iget v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 850
    :cond_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3

    .line 1042
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    .line 1044
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1045
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1046
    iget p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 1047
    iget-object p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, p1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 1048
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 1049
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1051
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1052
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1053
    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 3

    .line 1008
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_1

    .line 1009
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    .line 1010
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1011
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1012
    iget v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 1013
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 1014
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 1015
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1016
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1018
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1019
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 1020
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3

    .line 1058
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_1

    .line 1059
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    .line 1060
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1061
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 1062
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 1063
    iget v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    add-int/2addr v2, p2

    iput v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 1064
    :cond_0
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 1065
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1066
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1068
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1069
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 1070
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4

    .line 1025
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_1

    .line 1026
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    .line 1027
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1028
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1029
    iget v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    add-int/2addr v3, p1

    iput v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 1030
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, p1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 1031
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 1032
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 1033
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1035
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1036
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 1037
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public clear()V
    .locals 3

    .line 856
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    .line 858
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 859
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 860
    iget v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->first:I

    iput v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 861
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 862
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 863
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 865
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 866
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 867
    monitor-exit v0

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 946
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 949
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 950
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 951
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2

    .line 956
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 959
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 960
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 961
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 988
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_1

    .line 989
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 991
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 992
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 993
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    .line 1122
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1125
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1126
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hashCode()I
    .locals 2

    .line 998
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 999
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0

    .line 1001
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1002
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 1003
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    .line 1132
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 1135
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1136
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1137
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isEmpty()Z
    .locals 2

    .line 936
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 937
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0

    .line 939
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 940
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 941
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 1109
    new-instance v0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;-><init>(Lorg/apache/commons/collections/FastArrayList$SubList;I)V

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    .line 1143
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 1146
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1147
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 1148
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2

    .line 1113
    new-instance v0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;-><init>(Lorg/apache/commons/collections/FastArrayList$SubList;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    .line 1117
    new-instance v0, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/FastArrayList$SubList$SubListIter;-><init>(Lorg/apache/commons/collections/FastArrayList$SubList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 3

    .line 1075
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    .line 1077
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1078
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 1079
    iget v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 1080
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 1081
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 1082
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1083
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1085
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1086
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 1087
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 872
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_1

    .line 873
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    .line 874
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 875
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 876
    iget v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 877
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 878
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 879
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 880
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 882
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 883
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 884
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4

    .line 889
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    .line 891
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 892
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 893
    invoke-interface {v2, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 894
    iget v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->first:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 895
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 896
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 897
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 898
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 900
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 901
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 902
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4

    .line 907
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_1

    .line 908
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    .line 909
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 910
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 911
    invoke-interface {v2, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 912
    iget v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->first:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v3, v2

    iput v3, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->last:I

    .line 913
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, v2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 914
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 915
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 916
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 918
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 919
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 920
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1092
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    monitor-enter v0

    .line 1094
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, v1, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1095
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1096
    iget-object p2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iput-object v1, p2, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 1097
    iput-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    .line 1098
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 1099
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1101
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1102
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 1103
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public size()I
    .locals 2

    .line 925
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 926
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 928
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 929
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 930
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subList(II)Ljava/util/List;
    .locals 3

    .line 1154
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    if-ne v0, v1, :cond_0

    .line 1157
    new-instance v0, Lorg/apache/commons/collections/FastArrayList$SubList;

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget v2, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->first:I

    add-int/2addr v2, p1

    add-int/2addr p1, p2

    invoke-direct {v0, v1, v2, p1}, Lorg/apache/commons/collections/FastArrayList$SubList;-><init>(Lorg/apache/commons/collections/FastArrayList;II)V

    return-object v0

    .line 1155
    :cond_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 976
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 979
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 980
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 981
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 966
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-boolean v0, v0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 969
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->this$0:Lorg/apache/commons/collections/FastArrayList;

    iget-object v0, v0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 970
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList$SubList;->expected:Ljava/util/List;

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/FastArrayList$SubList;->get(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 971
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
