.class public Liptv/m3u/parser/M3UItem;
.super Ljava/lang/Object;
.source "M3UItem.java"


# instance fields
.field private mChannelId:Ljava/lang/String;

.field private mChannelName:Ljava/lang/String;

.field private mDLNAExtras:Ljava/lang/String;

.field private mDuration:I

.field private mGroupTitle:Ljava/lang/String;

.field private mLogoURL:Ljava/lang/String;

.field private mPlugin:Ljava/lang/String;

.field private mStreamURL:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannelId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Liptv/m3u/parser/M3UItem;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Liptv/m3u/parser/M3UItem;->mChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getDLNAExtras()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Liptv/m3u/parser/M3UItem;->mDLNAExtras:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .registers 2

    iget v0, p0, Liptv/m3u/parser/M3UItem;->mDuration:I

    return v0
.end method

.method public getGroupTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Liptv/m3u/parser/M3UItem;->mGroupTitle:Ljava/lang/String;

    if-nez v0, :cond_6

    const-string v0, ""

    :cond_6
    return-object v0
.end method

.method public getLogoURL()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Liptv/m3u/parser/M3UItem;->mLogoURL:Ljava/lang/String;

    return-object v0
.end method

.method public getPlugin()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Liptv/m3u/parser/M3UItem;->mPlugin:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamURL()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Liptv/m3u/parser/M3UItem;->mStreamURL:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Liptv/m3u/parser/M3UItem;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setChannelID(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Liptv/m3u/parser/M3UItem;->mChannelId:Ljava/lang/String;

    return-void
.end method

.method public setChannelName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Liptv/m3u/parser/M3UItem;->mChannelName:Ljava/lang/String;

    return-void
.end method

.method public setDLNAExtras(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Liptv/m3u/parser/M3UItem;->mDLNAExtras:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .registers 2

    iput p1, p0, Liptv/m3u/parser/M3UItem;->mDuration:I

    return-void
.end method

.method public setGroupTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Liptv/m3u/parser/M3UItem;->mGroupTitle:Ljava/lang/String;

    return-void
.end method

.method public setLogoURL(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Liptv/m3u/parser/M3UItem;->mLogoURL:Ljava/lang/String;

    return-void
.end method

.method public setPlugin(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Liptv/m3u/parser/M3UItem;->mPlugin:Ljava/lang/String;

    return-void
.end method

.method public setStreamURL(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Liptv/m3u/parser/M3UItem;->mStreamURL:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Liptv/m3u/parser/M3UItem;->mType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "[Item]"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget-object v1, p0, Liptv/m3u/parser/M3UItem;->mChannelId:Ljava/lang/String;

    if-eqz v1, :cond_20

    const-string v1, "\n Channel Id: "

    .line 4
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5
    iget-object v2, p0, Liptv/m3u/parser/M3UItem;->mChannelId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    :cond_20
    iget-object v1, p0, Liptv/m3u/parser/M3UItem;->mChannelName:Ljava/lang/String;

    if-eqz v1, :cond_36

    const-string v1, "\nChannel Name: "

    .line 7
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    iget-object v2, p0, Liptv/m3u/parser/M3UItem;->mChannelName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_36
    const-string v1, "\nDuration: "

    .line 9
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 10
    iget v2, p0, Liptv/m3u/parser/M3UItem;->mDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    iget-object v1, p0, Liptv/m3u/parser/M3UItem;->mStreamURL:Ljava/lang/String;

    if-eqz v1, :cond_5e

    const-string v1, "\nStream URL: "

    .line 12
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 13
    iget-object v2, p0, Liptv/m3u/parser/M3UItem;->mStreamURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    :cond_5e
    iget-object v1, p0, Liptv/m3u/parser/M3UItem;->mGroupTitle:Ljava/lang/String;

    if-eqz v1, :cond_74

    const-string v1, "\nGroup: "

    .line 15
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 16
    iget-object v2, p0, Liptv/m3u/parser/M3UItem;->mGroupTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    :cond_74
    iget-object v1, p0, Liptv/m3u/parser/M3UItem;->mLogoURL:Ljava/lang/String;

    if-eqz v1, :cond_8a

    const-string v1, "\nLogo: "

    .line 18
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19
    iget-object v2, p0, Liptv/m3u/parser/M3UItem;->mLogoURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    :cond_8a
    iget-object v1, p0, Liptv/m3u/parser/M3UItem;->mType:Ljava/lang/String;

    if-eqz v1, :cond_a0

    const-string v1, "\nType: "

    .line 21
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 22
    iget-object v2, p0, Liptv/m3u/parser/M3UItem;->mType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    :cond_a0
    iget-object v1, p0, Liptv/m3u/parser/M3UItem;->mDLNAExtras:Ljava/lang/String;

    if-eqz v1, :cond_b6

    const-string v1, "\nDLNA Extras: "

    .line 24
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 25
    iget-object v2, p0, Liptv/m3u/parser/M3UItem;->mDLNAExtras:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    :cond_b6
    iget-object v1, p0, Liptv/m3u/parser/M3UItem;->mPlugin:Ljava/lang/String;

    if-eqz v1, :cond_cc

    const-string v1, "\nPlugin: "

    .line 27
    invoke-static {v1}, Landroidx/core/graphics/Insets$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 28
    iget-object v2, p0, Liptv/m3u/parser/M3UItem;->mPlugin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    :cond_cc
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
