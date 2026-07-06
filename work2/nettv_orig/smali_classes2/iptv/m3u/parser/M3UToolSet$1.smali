.class Liptv/m3u/parser/M3UToolSet$1;
.super Ljava/lang/Object;
.source "M3UToolSet.java"

# interfaces
.implements Liptv/m3u/parser/M3UHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Liptv/m3u/parser/M3UToolSet;->load(Ljava/lang/String;)Liptv/m3u/parser/M3UFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$file:Liptv/m3u/parser/M3UFile;


# direct methods
.method public constructor <init>(Liptv/m3u/parser/M3UFile;)V
    .locals 0

    iput-object p1, p0, Liptv/m3u/parser/M3UToolSet$1;->val$file:Liptv/m3u/parser/M3UFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadEXTINF(Liptv/m3u/parser/M3UItem;)V
    .locals 1

    iget-object v0, p0, Liptv/m3u/parser/M3UToolSet$1;->val$file:Liptv/m3u/parser/M3UFile;

    invoke-virtual {v0, p1}, Liptv/m3u/parser/M3UFile;->addItem(Liptv/m3u/parser/M3UItem;)Z

    return-void
.end method

.method public onReadEXTM3U(Liptv/m3u/parser/M3UHead;)V
    .locals 1

    iget-object v0, p0, Liptv/m3u/parser/M3UToolSet$1;->val$file:Liptv/m3u/parser/M3UFile;

    invoke-virtual {v0, p1}, Liptv/m3u/parser/M3UFile;->setHeader(Liptv/m3u/parser/M3UHead;)V

    return-void
.end method
