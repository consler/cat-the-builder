.class Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;
.super Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;
.source "TreeSetConverter.java"


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;

    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    return-void
.end method


# virtual methods
.method protected populateMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    .line 136
    iget-object p3, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;

    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1$1;

    invoke-direct {v0, p0, p4}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1$1;-><init>(Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;Ljava/util/Map;)V

    invoke-virtual {p3, p1, p2, v0}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->populateCollection(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Collection;)V

    return-void
.end method

.method protected putCurrentEntryIntoMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 153
    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;->readItem(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 154
    invoke-interface {p4, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
