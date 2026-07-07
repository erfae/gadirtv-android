.class public final synthetic Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchAdapter$S17T6bBX3w5sjDuaIeGnQNp3glM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

.field public final synthetic f$1:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchAdapter$S17T6bBX3w5sjDuaIeGnQNp3glM;->f$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    iput-object p2, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchAdapter$S17T6bBX3w5sjDuaIeGnQNp3glM;->f$1:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchAdapter$S17T6bBX3w5sjDuaIeGnQNp3glM;->f$0:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;

    iget-object v1, p0, Lcom/magoware/magoware/webtv/mobile_homepage/search/-$$Lambda$SearchAdapter$S17T6bBX3w5sjDuaIeGnQNp3glM;->f$1:Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;

    invoke-virtual {v0, v1, p1}, Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter;->lambda$onBindViewHolder$3$SearchAdapter(Lcom/magoware/magoware/webtv/mobile_homepage/search/SearchAdapter$ProgramViewHolder;Landroid/view/View;)V

    return-void
.end method
