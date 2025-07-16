.class Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor$1;
.super Ljava/lang/Object;
.source "ThreadSafePropertyEditor.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/util/Pool$Factory;


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor$1;->this$0:Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 3

    .line 51
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor$1;->this$0:Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->access$000(Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v2, "Cannot call default constructor"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 53
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Faild to call default constructor"

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor$1;->this$0:Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;

    invoke-static {v0}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->access$000(Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "construction-type"

    invoke-virtual {v1, v2, v0}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    throw v1
.end method
