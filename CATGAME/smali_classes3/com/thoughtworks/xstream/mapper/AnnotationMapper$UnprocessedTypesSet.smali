.class final Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;
.super Ljava/util/LinkedHashSet;
.source "AnnotationMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/mapper/AnnotationMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UnprocessedTypesSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashSet<",
        "Ljava/lang/Class<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/thoughtworks/xstream/mapper/AnnotationMapper;


# direct methods
.method private constructor <init>(Lcom/thoughtworks/xstream/mapper/AnnotationMapper;)V
    .locals 0

    .line 601
    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;->this$0:Lcom/thoughtworks/xstream/mapper/AnnotationMapper;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/thoughtworks/xstream/mapper/AnnotationMapper;Lcom/thoughtworks/xstream/mapper/AnnotationMapper$1;)V
    .locals 0

    .line 601
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;-><init>(Lcom/thoughtworks/xstream/mapper/AnnotationMapper;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 607
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 608
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 610
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java."

    .line 611
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "javax."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    .line 614
    :cond_2
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;->this$0:Lcom/thoughtworks/xstream/mapper/AnnotationMapper;

    invoke-static {v1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper;->access$100(Lcom/thoughtworks/xstream/mapper/AnnotationMapper;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_4

    .line 616
    const-class v2, Lcom/thoughtworks/xstream/annotations/XStreamInclude;

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/thoughtworks/xstream/annotations/XStreamInclude;

    if-eqz p1, :cond_4

    .line 618
    invoke-interface {p1}, Lcom/thoughtworks/xstream/annotations/XStreamInclude;->value()[Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 620
    array-length v2, p1

    :goto_2
    if-ge v0, v2, :cond_4

    aget-object v3, p1, v0

    .line 621
    invoke-virtual {p0, v3}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;->add(Ljava/lang/Class;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return v1

    :cond_5
    :goto_3
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 601
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/mapper/AnnotationMapper$UnprocessedTypesSet;->add(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
