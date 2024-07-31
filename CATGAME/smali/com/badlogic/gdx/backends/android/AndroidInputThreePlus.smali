.class public Lcom/badlogic/gdx/backends/android/AndroidInputThreePlus;
.super Lcom/badlogic/gdx/backends/android/AndroidInput;
.source "AndroidInputThreePlus.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# instance fields
.field genericMotionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View$OnGenericMotionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mouseHandler:Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V
    .locals 1
    .param p1, "activity"    # Lcom/badlogic/gdx/Application;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "view"    # Ljava/lang/Object;
    .param p4, "config"    # Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/backends/android/AndroidInput;-><init>(Lcom/badlogic/gdx/Application;Landroid/content/Context;Ljava/lang/Object;Lcom/badlogic/gdx/backends/android/AndroidApplicationConfiguration;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInputThreePlus;->genericMotionListeners:Ljava/util/ArrayList;

    .line 38
    instance-of v0, p3, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 39
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    .line 40
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    .line 42
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;

    invoke-direct {v0}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInputThreePlus;->mouseHandler:Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;

    .line 43
    return-void
.end method


# virtual methods
.method public addGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnGenericMotionListener;

    .line 54
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInputThreePlus;->genericMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 47
    iget-object v0, p0, Lcom/badlogic/gdx/backends/android/AndroidInputThreePlus;->mouseHandler:Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;

    invoke-virtual {v0, p2, p0}, Lcom/badlogic/gdx/backends/android/AndroidMouseHandler;->onGenericMotion(Landroid/view/MotionEvent;Lcom/badlogic/gdx/backends/android/AndroidInput;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 48
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInputThreePlus;->genericMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 49
    iget-object v3, p0, Lcom/badlogic/gdx/backends/android/AndroidInputThreePlus;->genericMotionListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View$OnGenericMotionListener;

    invoke-interface {v3, p1, p2}, Landroid/view/View$OnGenericMotionListener;->onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 48
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "i":I
    .end local v2    # "n":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
