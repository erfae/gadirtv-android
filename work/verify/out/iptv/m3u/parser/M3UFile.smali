.class public Liptv/m3u/parser/M3UFile;
.super Ljava/lang/Object;
.source "M3UFile.java"


# instance fields
.field private mHeader:Liptv/m3u/parser/M3UHead;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Liptv/m3u/parser/M3UItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Liptv/m3u/parser/M3UFile;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addItem(Liptv/m3u/parser/M3UItem;)Z
    .registers 3

    iget-object v0, p0, Liptv/m3u/parser/M3UFile;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public addItems(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Liptv/m3u/parser/M3UItem;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Liptv/m3u/parser/M3UFile;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public getHeader()Liptv/m3u/parser/M3UHead;
    .registers 2

    iget-object v0, p0, Liptv/m3u/parser/M3UFile;->mHeader:Liptv/m3u/parser/M3UHead;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Liptv/m3u/parser/M3UItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Liptv/m3u/parser/M3UFile;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public setHeader(Liptv/m3u/parser/M3UHead;)V
    .registers 2

    iput-object p1, p0, Liptv/m3u/parser/M3UFile;->mHeader:Liptv/m3u/parser/M3UHead;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    iget-object v1, p0, Liptv/m3u/parser/M3UFile;->mHeader:Liptv/m3u/parser/M3UHead;

    if-eqz v1, :cond_11

    .line 3
    invoke-virtual {v1}, Liptv/m3u/parser/M3UHead;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_16

    :cond_11
    const-string v1, "No header"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_16
    const/16 v1, 0xa

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 6
    iget-object v2, p0, Liptv/m3u/parser/M3UFile;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Liptv/m3u/parser/M3UItem;

    .line 7
    invoke-virtual {v3}, Liptv/m3u/parser/M3UItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_21

    .line 9
    :cond_38
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
