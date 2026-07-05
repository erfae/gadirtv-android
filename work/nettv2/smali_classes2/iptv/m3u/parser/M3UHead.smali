.class public Liptv/m3u/parser/M3UHead;
.super Ljava/lang/Object;
.source "M3UHead.java"


# instance fields
.field private mDLNAExtras:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPlugin:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDLNAExtras()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Liptv/m3u/parser/M3UHead;->mDLNAExtras:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Liptv/m3u/parser/M3UHead;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Liptv/m3u/parser/M3UHead;->mPlugin:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Liptv/m3u/parser/M3UHead;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setDLNAExtras(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Liptv/m3u/parser/M3UHead;->mDLNAExtras:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Liptv/m3u/parser/M3UHead;->mName:Ljava/lang/String;

    return-void
.end method

.method public setPlugin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Liptv/m3u/parser/M3UHead;->mPlugin:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Liptv/m3u/parser/M3UHead;->mType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[Head]"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget-object v1, p0, Liptv/m3u/parser/M3UHead;->mName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "\nName: "

    .line 4
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    iget-object v2, p0, Liptv/m3u/parser/M3UHead;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    :cond_0
    iget-object v1, p0, Liptv/m3u/parser/M3UHead;->mType:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "\nType: "

    .line 7
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    iget-object v2, p0, Liptv/m3u/parser/M3UHead;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    :cond_1
    iget-object v1, p0, Liptv/m3u/parser/M3UHead;->mDLNAExtras:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "\nDLNA Extras: "

    .line 10
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11
    iget-object v2, p0, Liptv/m3u/parser/M3UHead;->mDLNAExtras:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    :cond_2
    iget-object v1, p0, Liptv/m3u/parser/M3UHead;->mPlugin:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "\nPlugin: "

    .line 13
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 14
    iget-object v2, p0, Liptv/m3u/parser/M3UHead;->mPlugin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
