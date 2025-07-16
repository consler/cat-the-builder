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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/time/ValueRangeConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    return-void
.end method

.method private write(Ljava/lang/String;JLcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/time/ValueRangeConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-class v1, Ljava/time/temporal/ValueRange;

    invoke-interface {v0, v1, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p4, p1, v0}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 88
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    .line 89
    invoke-interface {p4}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    .line 49
    const-class v0, Ljava/time/temporal/ValueRange;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 2

    .line 54
    check-cast p1, Ljava/time/temporal/ValueRange;

    const-string p3, "maxLargest"

    .line 55
    invoke-virtual {p1}, Ljava/time/temporal/ValueRange;->getMaximum()J

    move-result-wide v0

    invoke-direct {p0, p3, v0, v1, p2}, Lcom/thoughtworks/xstream/converters/time/ValueRangeConverter;->write(Ljava/lang/String;JLcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    const-string p3, "maxSmallest"

    .line 56
    invoke-virtual {p1}, Ljava/time/temporal/ValueRange;->getSmallestMaximum()J

    move-result-wide v0

    invoke-direct {p0, p3, v0, v1, p2}, Lcom/thoughtworks/xstream/converters/time/ValueRangeConverter;->write(Ljava/lang/String;JLcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    const-string p3, "minLargest"

    .line 57
    invoke-virtual {p1}, Ljava/time/temporal/ValueRange;->getLargestMinimum()J

    move-result-wide v0

    invoke-direct {p0, p3, v0, v1, p2}, Lcom/thoughtworks/xstream/converters/time/ValueRangeConverter;->write(Ljava/lang/String;JLcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    const-string p3, "minSmallest"

    .line 58
    invoke-virtual {p1}, Ljava/time/temporal/ValueRange;->getMinimum()J

    move-result-wide v0

    invoke-direct {p0, p3, v0, v1, p2}, Lcom/thoughtworks/xstream/converters/time/ValueRangeConverter;->write(Ljava/lang/String;JLcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 9

    .line 63
    iget-object p2, p0, Lcom/thoughtworks/xstream/converters/time/ValueRangeConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-string v0, "serialization"

    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "custom"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 65
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 66
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 68
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 69
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 72
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_1

    goto :goto_1

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/time/ValueRangeConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    const-class v3, Ljava/time/temporal/ValueRange;

    invoke-interface {v2, v3, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 77
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 78
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    :cond_3
    const-string p1, "minSmallest"

    .line 80
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string p1, "minLargest"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string p1, "maxSmallest"

    .line 81
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    .line 82
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string p1, "maxLargest"

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 80
    invoke-static/range {v1 .. v8}, Ljava/time/temporal/ValueRange;->of(JJJJ)Ljava/time/temporal/ValueRange;

    move-result-object p1

    return-object p1
.end method
