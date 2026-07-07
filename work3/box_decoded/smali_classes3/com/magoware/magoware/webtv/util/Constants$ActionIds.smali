.class public Lcom/magoware/magoware/webtv/util/Constants$ActionIds;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/util/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionIds"
.end annotation


# static fields
.field public static final BUY:I = 0x3

.field public static final CAST:I = 0x6

.field public static final COMING_SOON:I = 0x4

.field public static final EPISODES:I = 0xb

.field public static final PLAY:I = 0x1

.field public static final RECOMMENDED:I = 0x7

.field public static final RELATED:I = 0xc

.field public static final RENT:I = 0x2

.field public static final SEASONS:I = 0xa

.field public static final SIMILAR:I = 0x8

.field public static final THUMB_DOWN:I = 0xe

.field public static final THUMB_UP:I = 0xd

.field public static final TRAILER:I = 0x9

.field public static final VIDEOS:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/magoware/magoware/webtv/util/Constants;


# direct methods
.method public constructor <init>(Lcom/magoware/magoware/webtv/util/Constants;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/magoware/magoware/webtv/util/Constants$ActionIds;->this$0:Lcom/magoware/magoware/webtv/util/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
