.class public Lcom/thoughtworks/xstream/converters/time/ValueRangeConverter;
.super Ljava/lang/Object;
.source "ValueRangeConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# instance fields
.field private final mapper:Lcom/thoughtworks/xstream/mapper/Mapper;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/time/ValueRangeConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 45
    return-void
.end method

.method private write(Ljava/lang/String;JLcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    .line 86
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/time/ValueRangeConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-class v1, Ljava/time/temporal/ValueRange;

    invoke-interface {v0, v1, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p4, v0, v1}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 88
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    .line 89
    invoke-interface {p4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    .line 90
    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 49
    const-class v0, Ljava/time/temporal/ValueRange;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 4
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 54
    move-object v0, p1

    check-cast v0, Ljava/time/temporal/ValueRange;

    .line 55
    .local v0, "valueRange":Ljava/time/temporal/ValueRange;
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v1

    const-string v3, "maxLargest"

    invoke-direct {p0, v3, v1, v2, p2}, Lcom/thoughtworks/xstream/converters/time/ValueRangeConverter;->write(Ljava/lang/String;JLcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 56
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getSmallestMaximum()J

    move-result-wide v1

    const-string v3, "maxSmallest"

    invoke-direct {p0, v3, v1, v2, p2}, Lcom/thoughtworks/xstream/converters/time/ValueRangeConverter;->write(Ljava/lang/String;JLcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 57
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getLargestMinimum()J

    move-result-wide v1

    const-string v3, "minLargest"

    invoke-direct {p0, v3, v1, v2, p2}, Lcom/thoughtworks/xstream/converters/time/ValueRangeConverter;->write(Ljava/lang/String;JLcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 58
    invoke-virtual {v0}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v1

    const-string v3, "minSmallest"

    invoke-direct {p0, v3, v1, v2, p2}, Lcom/thoughtworks/xstream/converters/time/ValueRangeConverter;->write(Ljava/lang/String;JLcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    .line 59
    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 11
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 63
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/time/ValueRangeConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v1, "serialization"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "custom"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 64
    .local v0, "oldFormat":Z
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 66
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 68
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 69
    .local v1, "elements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 70
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 72
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    move-object v3, v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/time/ValueRangeConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-class v4, Ljava/time/temporal/ValueRange;

    invoke-interface {v3, v4, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 75
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 76
    :cond_2
    if-eqz v0, :cond_3

    .line 77
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 78
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 80
    :cond_3
    const-string v2, "minSmallest"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v2, "minLargest"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 81
    const-string v2, "maxSmallest"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 82
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v2, "maxLargest"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 80
    invoke-static/range {v3 .. v10}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object v2

    return-object v2
.end method
