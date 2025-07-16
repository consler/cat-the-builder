.class public Lcom/thoughtworks/xstream/converters/extended/PropertyEditorCapableConverter;
.super Ljava/lang/Object;
.source "PropertyEditorCapableConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/SingleValueConverter;


# instance fields
.field private final editor:Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/extended/PropertyEditorCapableConverter;->type:Ljava/lang/Class;

    .line 34
    new-instance p2, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;

    const/4 v0, 0x2

    const/4 v1, 0x5

    invoke-direct {p2, p1, v0, v1}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;-><init>(Ljava/lang/Class;II)V

    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/extended/PropertyEditorCapableConverter;->editor:Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;

    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/PropertyEditorCapableConverter;->type:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/PropertyEditorCapableConverter;->editor:Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->setAsText(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/PropertyEditorCapableConverter;->editor:Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/ThreadSafePropertyEditor;->getAsText(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
