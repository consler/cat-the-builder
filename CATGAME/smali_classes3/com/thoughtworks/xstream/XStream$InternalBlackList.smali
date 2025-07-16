.class Lcom/thoughtworks/xstream/XStream$InternalBlackList;
.super Ljava/lang/Object;
.source "XStream.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/XStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalBlackList"
.end annotation


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/XStream;


# direct methods
.method private constructor <init>(Lcom/thoughtworks/xstream/XStream;)V
    .locals 0

    .line 2543
    iput-object p1, p0, Lcom/thoughtworks/xstream/XStream$InternalBlackList;->this$0:Lcom/thoughtworks/xstream/XStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/thoughtworks/xstream/XStream;Lcom/thoughtworks/xstream/XStream$1;)V
    .locals 0

    .line 2543
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/XStream$InternalBlackList;-><init>(Lcom/thoughtworks/xstream/XStream;)V

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 2

    .line 2546
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Void:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Void"

    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Void:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/XStream;->class$java$lang$Void:Ljava/lang/Class;

    :goto_0
    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/thoughtworks/xstream/XStream$InternalBlackList;->this$0:Lcom/thoughtworks/xstream/XStream;

    .line 2547
    invoke-static {v0}, Lcom/thoughtworks/xstream/XStream;->access$100(Lcom/thoughtworks/xstream/XStream;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 2549
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.beans.EventHandler"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2550
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$LazyIterator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2551
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "javax.crypto."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 0

    .line 2556
    new-instance p1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string p2, "Security alert. Marshalling rejected."

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 0

    .line 2560
    new-instance p1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string p2, "Security alert. Unmarshalling rejected."

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
