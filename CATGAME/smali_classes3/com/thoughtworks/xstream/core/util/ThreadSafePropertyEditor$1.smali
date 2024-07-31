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
    .param p1, "this$0"    # Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;

    .line 47
    iput-object p1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor$1;->this$0:Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance()Ljava/lang/Object;
    .locals 4

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "ex":Lcom/thoughtworks/xstream/converters/ErrorWritingException;
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor$1;->this$0:Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->access$000(Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v3, "Cannot call default constructor"

    invoke-direct {v2, v3, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_0

    .line 52
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v3, "Faild to call default constructor"

    invoke-direct {v2, v3, v1}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    .line 56
    .end local v1    # "e":Ljava/lang/InstantiationException;
    nop

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor$1;->this$0:Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->access$000(Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "construction-type"

    invoke-virtual {v0, v2, v1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    throw v0
.end method
