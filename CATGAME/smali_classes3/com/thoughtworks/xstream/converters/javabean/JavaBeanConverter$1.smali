.class Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;
.super Ljava/lang/Object;
.source "JavaBeanConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/javabean/JavaBeanProvider$Visitor;


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

.field private final synthetic val$classAttributeName:Ljava/lang/String;

.field private final synthetic val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

.field private final synthetic val$source:Ljava/lang/Object;

.field private final synthetic val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$source:Ljava/lang/Object;

    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iput-object p4, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$classAttributeName:Ljava/lang/String;

    iput-object p5, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private writeField(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 3

    .line 101
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v1, p2}, Lcom/thoughtworks/xstream/mapper/Mapper;->defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 103
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$source:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 104
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-static {v1, p1, v0}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 105
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$classAttributeName:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 106
    iget-object p2, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v1, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$context:Lcom/thoughtworks/xstream/converters/MarshallingContext;

    invoke-interface {p1, p3}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 110
    iget-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    return-void
.end method

.method private writeNullField(Ljava/lang/String;)V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$source:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    sget-object v1, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    const-string v2, "com.thoughtworks.xstream.mapper.Mapper$Null"

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    :goto_0
    invoke-static {v0, p1, v1}, Lcom/thoughtworks/xstream/io/ExtendedHierarchicalStreamWriterHelper;->startNode(Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 116
    iget-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$classAttributeName:Ljava/lang/String;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iget-object v1, v1, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    sget-object v3, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->class$com$thoughtworks$xstream$mapper$Mapper$Null:Ljava/lang/Class;

    :goto_1
    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->val$writer:Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    return-void
.end method


# virtual methods
.method public shouldVisit(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    iget-object v0, v0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;->mapper:Lcom/thoughtworks/xstream/mapper/Mapper;

    invoke-interface {v0, p2, p1}, Lcom/thoughtworks/xstream/mapper/Mapper;->shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public visit(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 94
    invoke-direct {p0, p1, p2, p4}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->writeField(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$1;->writeNullField(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
