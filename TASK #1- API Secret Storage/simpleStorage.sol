{\rtf1\ansi\ansicpg1252\cocoartf2636
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red79\green123\blue61;\red26\green26\blue41;\red172\green172\blue193;
\red70\green137\blue204;\red212\green212\blue212;\red167\green197\blue152;\red45\green175\blue118;\red31\green133\blue64;
\red140\green108\blue11;}
{\*\expandedcolortbl;;\cssrgb\c37647\c54510\c30588;\cssrgb\c13333\c13725\c21176;\cssrgb\c72941\c73333\c80000;
\cssrgb\c33725\c61176\c83922;\cssrgb\c86275\c86275\c86275;\cssrgb\c70980\c80784\c65882;\cssrgb\c19608\c72941\c53725;\cssrgb\c12941\c58039\c31765;
\cssrgb\c61961\c49412\c3137;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 // SPDX-License-Identifier: MIT\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 pragma\cf4 \strokec4  \cf5 \strokec5 solidity\cf4 \strokec4  \cf6 \strokec6 ^\cf7 \strokec7 0.6.0\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\
\cf5 \cb3 \strokec5 contract\cf4 \strokec4  SecretStorage\cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     \cf5 \strokec5 uint256\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  secret\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\
\cb3     \cf5 \strokec5 struct\cf4 \strokec4  hacked\cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 uint256\cf4 \strokec4  number\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 string\cf4 \strokec4  name\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\cb3     hacked\cf6 \strokec6 []\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  hackedNames\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 mapping\cf6 \strokec6 (\cf5 \strokec5 string\cf4 \strokec4 =>\cf5 \strokec5 uint256\cf6 \strokec6 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  gettingNames\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\
\cb3     \cf5 \strokec5 function\cf4 \strokec4  storeSecret\cf6 \strokec6 (\cf5 \strokec5 uint256\cf4 \strokec4  _secret\cf6 \strokec6 )\cf4 \strokec4  \cf8 \strokec8 public\cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         secret\cf6 \strokec6 =\cf4 \strokec4 _secret\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf5 \strokec5 function\cf4 \strokec4  retrive\cf6 \strokec6 ()\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf8 \strokec8 view\cf4 \strokec4  \cf9 \strokec9 returns\cf6 \strokec6 (\cf5 \strokec5 uint256\cf6 \strokec6 )\{\cf4 \cb1 \strokec4 \
\cb3         \cf9 \strokec9 return\cf4 \strokec4  secret\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf5 \strokec5 function\cf4 \strokec4  addPersion\cf6 \strokec6 (\cf5 \strokec5 string\cf4 \strokec4  \cf10 \strokec10 memory\cf4 \strokec4  _name\cf6 \strokec6 ,\cf5 \strokec5 uint256\cf4 \strokec4  _number\cf6 \strokec6 )\cf4 \strokec4  \cf8 \strokec8 public\cf6 \strokec6 \{\cf4 \cb1 \strokec4 \
\cb3         hackedNames\cf6 \strokec6 .\cf4 \strokec4 push\cf6 \strokec6 (\cf4 \strokec4 hacked\cf6 \strokec6 (\{\cf4 \strokec4 number\cf6 \strokec6 :\cf4 \strokec4 _number\cf6 \strokec6 ,\cf4 \strokec4 name\cf6 \strokec6 :\cf4 \strokec4 _name\cf6 \strokec6 \}));\cf4 \cb1 \strokec4 \
\cb3         gettingNames\cf6 \strokec6 [\cf4 \strokec4 _name\cf6 \strokec6 ]=\cf4 \strokec4 _number\cf6 \strokec6 ;\cf4 \cb1 \strokec4 \
\cb3     \cf6 \strokec6 \}\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf6 \cb3 \strokec6 \}\cf4 \cb1 \strokec4 \
}