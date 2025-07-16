.class public Lcom/pdrogfer/mididroid/event/meta/Lyrics;
.super Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;
.source "Lyrics.java"


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 7

    const/4 v5, 0x5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v6, p5

    .line 23
    invoke-direct/range {v0 .. v6}, Lcom/pdrogfer/mididroid/event/meta/TextualMetaEvent;-><init>(JJILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLyric()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/pdrogfer/mididroid/event/meta/Lyrics;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLyric(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/pdrogfer/mididroid/event/meta/Lyrics;->setText(Ljava/lang/String;)V

    return-void
.end method
