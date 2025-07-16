.class public Lcom/thoughtworks/xstream/converters/collections/SingletonCollectionConverter;
.super Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;
.source "SingletonCollectionConverter.java"


# static fields
.field private static final LIST:Ljava/lang/Class;

.field private static final SET:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/SingletonCollectionConverter;->LIST:Ljava/lang/Class;

    .line 33
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/SingletonCollectionConverter;->SET:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    .line 46
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/SingletonCollectionConverter;->LIST:Ljava/lang/Class;

    if-eq v0, p1, :cond_1

    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/SingletonCollectionConverter;->SET:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/converters/collections/SingletonCollectionConverter;->readCompleteItem(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 51
    invoke-interface {p2}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->getRequiredType()Ljava/lang/Class;

    move-result-object p2

    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/SingletonCollectionConverter;->LIST:Ljava/lang/Class;

    if-ne p2, v0, :cond_0

    .line 52
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 53
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    return-object p1
.end method
