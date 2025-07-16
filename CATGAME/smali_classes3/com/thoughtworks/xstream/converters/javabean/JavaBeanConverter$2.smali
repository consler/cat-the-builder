.class Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$2;
.super Ljava/util/HashSet;
.source "JavaBeanConverter.java"


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$2;->this$0:Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    .line 126
    invoke-super {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 127
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$DuplicatePropertyException;

    check-cast p1, Lcom/thoughtworks/xstream/core/util/FastField;

    invoke-virtual {p1}, Lcom/thoughtworks/xstream/core/util/FastField;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/converters/javabean/JavaBeanConverter$DuplicatePropertyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
