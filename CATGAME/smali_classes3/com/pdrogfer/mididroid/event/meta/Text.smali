.class public Lcom/pdrogfer/mididroid/event/meta/Text;
.super Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;
.source "Text.java"


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 7
    .param p1, "tick"    # J
    .param p3, "delta"    # J
    .param p5, "text"    # Ljava/lang/String;

    .line 23
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;-><init>(JJILjava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-super {p0}, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/String;

    .line 28
    invoke-super {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;->setText(Ljava/lang/String;)V

    .line 29
    return-void
.end method
